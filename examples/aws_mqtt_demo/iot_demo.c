/**
 * Copyright (c) 2022 WIZnet Co.,Ltd
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

/**
 * ----------------------------------------------------------------------------------------------------
 * Includes
 * ----------------------------------------------------------------------------------------------------
 */
#include <stdio.h>
#include <string.h>
#include "hardware/adc.h"
#include "hardware/pwm.h"
#include "port_common.h"
#include "mqtt_transport_interface.h"
#include "ssl_transport_interface.h"
#include "timer_interface.h"

#include "mqtt_certificate.h"

const uint delay = 1000;
/* Port */
#define TARGET_PORT 8883

/* MQTT */
#define MQTT_PUB_PERIOD (1000 * 10) // 10 seconds

#define MQTT_DOMAIN "a1xb431e0m14xn-ats.iot.us-east-1.amazonaws.com"
#define MQTT_PUB_TOPIC "$aws/things/wiz360_rp2040/shadow/update"
#define MQTT_SUB_TOPIC "$aws/things/wiz360_rp2040/shadow/update/accepted"
#define MQTT_USERNAME NULL
#define MQTT_PASSWORD NULL
#define MQTT_CLIENT_ID "wiz360_rp2040"

/**
 * ----------------------------------------------------------------------------------------------------
 * Variables
 * ----------------------------------------------------------------------------------------------------
 */

/* MQTT */
static uint8_t g_mqtt_buf[MQTT_BUF_MAX_SIZE] = {
    0,
};
static uint8_t g_mqtt_pub_msg_buf[MQTT_BUF_MAX_SIZE] = {
    0,
};
/* Added by Teju */
extern uint8_t mqtt_sub_msg[];
/* SSL */
tlsContext_t g_mqtt_tls_context;

/* Added by Teju for Mapping value */
long map(long x, long in_min, long in_max, long out_min, long out_max) 
{
    return (x-in_min) * (out_max-out_min) / (in_max - in_min) + out_min;
}

int test_condition_of_bulb(char const *condition)
{
    int val;
    if(val=strcmp("on",condition)== 0)
    {
        printf("condition is %s\n",condition);
        val = 254;
        printf("Value is %d\n",val);
        return val;
      
    }
    else
    {
        printf("condition is %s\n",condition);
        val = 0;
        printf("Value is %d\n",val);
        return val;
    }
}
/**
 * ----------------------------------------------------------------------------------------------------
 * demo
 * ----------------------------------------------------------------------------------------------------
 */
int demo( void )
{
    adc_init();
    adc_gpio_init(28);
    adc_select_input(2);

    gpio_set_function(14,GPIO_FUNC_PWM);
    uint slice_num = pwm_gpio_to_slice_num(14);

    pwm_set_wrap(slice_num,255);
    pwm_set_chan_level(slice_num,PWM_CHAN_A,0);
    pwm_set_enabled(slice_num,true);

    int retval = 0;
    /* Setup certificate */
    g_mqtt_tls_context.rootca_option = MBEDTLS_SSL_VERIFY_REQUIRED; // use Root CA verify
    g_mqtt_tls_context.clica_option = 1;                            // use client certificate
    g_mqtt_tls_context.root_ca = mqtt_root_ca;
    g_mqtt_tls_context.client_cert = mqtt_client_cert;
    g_mqtt_tls_context.private_key = mqtt_private_key;
    uint32_t pub_cnt = 0;

    wizchip_1ms_timer_initialize(repeating_timer_callback);
    retval = mqtt_transport_init(true, MQTT_CLIENT_ID, NULL, NULL, MQTT_DEFAULT_KEEP_ALIVE);

    if (retval != 0)
    {
        printf(" Failed, mqtt_transport_init returned %d\n", retval);

        while (1)
            ;
    }

    retval = mqtt_transport_connect(1, g_mqtt_buf, MQTT_BUF_MAX_SIZE, MQTT_DOMAIN, TARGET_PORT, &g_mqtt_tls_context);

    if (retval != 0)
    {
        printf(" Failed, mqtt_transport_connect returned %d\n", retval);

        while (1)
            ;
    }
    retval = mqtt_transport_subscribe(0, MQTT_SUB_TOPIC);

    if (retval != 0)
    {
        printf(" Failed, mqtt_transport_subscribe returned %d\n", retval);

        while (1)
            ;
    }
int pwm;
    printf(" AWS IoT connected\r\n");
    while (1)
    {

        const float conversion_factor = 3.3f / (1 << 12);
        uint16_t result = adc_read();
      //  printf("Raw value: 0x%03x, voltage: %f V\n", result, result * conversion_factor);
       // long pwm_value = map(result, 0, 4095, 0, 255);
       
       test_condition_of_bulb(mqtt_sub_msg);
      //  printf("Raw value: 0x%03x, voltage: %f V\n, PWM: %ld", result, result * conversion_factor,pwm_value);
        pwm_set_chan_level(slice_num, PWM_CHAN_A,test_condition_of_bulb(mqtt_sub_msg));
       // sleep_ms(50);

       retval = mqtt_transport_yield(MQTT_DEFAULT_YIELD_TIMEOUT);

        if (retval != 0)
        {
            printf(" Failed, mqtt_transport_yield returned %d\n", retval);

            while (1)
                ;
        }
        sprintf(g_mqtt_pub_msg_buf, "{\"message\":\"Hello, World from rp2040 to aws !\",\"Voltage of potentiometer\"=\"%f V\",Message from iot %s\n,Pwm_value is %d\n}\n",result * conversion_factor,mqtt_sub_msg,pwm);
        mqtt_transport_publish(MQTT_PUB_TOPIC, g_mqtt_pub_msg_buf, strlen(g_mqtt_pub_msg_buf), 0);
        
        
    }
}

/*-----------------------------------------------------------*/
