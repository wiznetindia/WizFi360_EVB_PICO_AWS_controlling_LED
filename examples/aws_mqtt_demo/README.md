# How to Test Connect to AWS IoT through MQTT Example



## Step 1: Prepare software

The following serial terminal program is required for Connect AWS IoT through MQTT example test, download and install from below link.

- [**Tera Term**][link-tera_term]



## Step 2: Prepare hardware

1. Connect WizFi360-EVB-Pico to desktop or laptop using 5 pin micro USB cable.



## Step 3: Setup AWS IoT

In order to connect to AWS IoT through MQTT, the development environment must be configured to use AWS IoT.

This example was tested by configuring AWS IoT Core. Please refer to the 'Create AWS IoT resources' section of document below and configure accordingly.

- [**Create AWS IoT resources**][link-create_aws_iot_resources]

For more information on AWS IoT, refer to the document below.

- [**What is AWS IoT?**][link-what_is_aws_iot]



## Step 4: Setup Connect AWS IoT through MQTT Example

To test the Connect AWS IoT through MQTT example, minor settings shall be done in code.

1. Setup Wi-Fi configuration in 'socket_startup.c' in 'WizFi360-EVB-Pico-AWS-C/examples/aws_mqtt_demo/' directory.

Setup the Wi-Fi network information you use.

```cpp
/* Wi-Fi configuration */
#define SSID "ssid"
#define PASSWORD "password"
#define SECURITY_TYPE ARM_WIFI_SECURITY_WPA2
```

2. Setup AWS IoT configuration.

MQTT_DOMAIN should be setup as AWS IoT data endpoint, and MQTT_USERNAME and MQTT_PASSWORD do not need to be setup. Setup MQTT_CLIENT_ID same as thing created during AWS IoT Core setup.

AWS IoT configuration can be set in 'iot_demo.c' in 'WizFi360-EVB-Pico-AWS-C/examples/aws_mqtt_demo/' directory.

```cpp
/* AWS IoT */
#define MQTT_DOMAIN "account-specific-prefix-ats.iot.ap-northeast-2.amazonaws.com"
#define MQTT_PUB_TOPIC "$aws/things/my_wizfi360_thing/shadow/update"
#define MQTT_SUB_TOPIC "$aws/things/my_wizfi360_thing/shadow/update/accepted"
#define MQTT_USERNAME NULL
#define MQTT_PASSWORD NULL
#define MQTT_CLIENT_ID "my_wizfi360_thing"
```

3. Setup device certificate and key.

You must enter the root certificate, client certificate and private key that were downloaded in Step 3.

Root certificate uses the RSA 2048 bit key, Amazon Root CA 1, and does not use the public key.

Device certificate and key can be set in 'mqtt_certificate.h' in 'WizFi360-EVB-Pico-AWS-C/examples/aws_mqtt_demo/' directory.

```cpp
uint8_t mqtt_root_ca[] =
"-----BEGIN CERTIFICATE-----\r\n"
"...\r\n"
"-----END CERTIFICATE-----\r\n";

uint8_t mqtt_client_cert[] =
"-----BEGIN CERTIFICATE-----\r\n"
"...\r\n"
"-----END CERTIFICATE-----\r\n";

uint8_t mqtt_private_key[] =
"-----BEGIN RSA PRIVATE KEY-----\r\n"
"...\r\n"
"-----END RSA PRIVATE KEY-----\r\n";
```



## Step 5: Build

1. After completing the configuration, click 'build' in the status bar at the bottom of Visual Studio Code or press the 'F7' button on the keyboard to build.

2. When the build is completed, 'aws_mqtt_demo.uf2' is generated in 'WizFi360-EVB-Pico-AWS-C/build/examples/aws_mqtt_demo/' directory.



## Step 6: Upload and Run

1. While pressing the BOOTSEL button of WizFi360-EVB-Pico power on the board, the USB mass storage 'RPI-RP2' is automatically mounted.

![][link-raspberry_pi_pico_usb_mass_storage]

2. Drag and drop 'aws_mqtt_demo.uf2' onto the USB mass storage device 'RPI-RP2'.

3. Connect to the serial COM port of WizFi360-EVB-Pico with Tera Term.

![][link-connect_to_serial_com_port]

4. Reset your board.

5. If the Connect AWS IoT through MQTT example works normally on WizFi360-EVB-Pico, you can see the Wi-Fi connection log, connecting to the AWS IoT and publishing the message.

![][link-see_wi-fi_connection_log_connecting_to_aws_iot_and_publishing_message]

![][link-subscribe_to_publish_topic_and_receive_publish_message_through_test_function]

6. If you publish the message through the test function in AWS IoT Core to the subcribe topic was configured in Step 4, you can see that the WizFi360-EVB-Pico receive the message about the subcribe topic.

![][link-publish_message_through_test_function]

![][link-receive_message_about_subcribe_topic]



<!--
Link
-->

[link-tera_term]: https://osdn.net/projects/ttssh2/releases/
[link-create_aws_iot_resources]: https://docs.aws.amazon.com/iot/latest/developerguide/create-iot-resources.html
[link-what_is_aws_iot]: https://docs.aws.amazon.com/iot/latest/developerguide/what-is-aws-iot.html
[link-raspberry_pi_pico_usb_mass_storage]: https://github.com/Wiznet/WizFi360-EVB-Pico-AWS-C/blob/main/static/images/aws_mqtt_demo/raspberry_pi_pico_usb_mass_storage.png
[link-connect_to_serial_com_port]: https://github.com/Wiznet/WizFi360-EVB-Pico-AWS-C/blob/main/static/images/aws_mqtt_demo/connect_to_serial_com_port.png
[link-see_wi-fi_connection_log_connecting_to_aws_iot_and_publishing_message]: https://github.com/Wiznet/WizFi360-EVB-Pico-AWS-C/blob/main/static/images/aws_mqtt_demo/see_wi-fi_connection_log_connecting_to_aws_iot_and_publishing_message.png
[link-subscribe_to_publish_topic_and_receive_publish_message_through_test_function]: https://github.com/Wiznet/WizFi360-EVB-Pico-AWS-C/blob/main/static/images/aws_mqtt_demo/subscribe_to_publish_topic_and_receive_publish_message_through_test_function.png
[link-publish_message_through_test_function]:https://github.com/Wiznet/WizFi360-EVB-Pico-AWS-C/blob/main/static/images/aws_mqtt_demo/publish_message_through_test_function.png
[link-receive_message_about_subcribe_topic]:https://github.com/Wiznet/WizFi360-EVB-Pico-AWS-C/blob/main/static/images/aws_mqtt_demo/receive_message_about_subscribe_topic.png
