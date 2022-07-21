# Install script for directory: D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/WizFi360-EVB-Pico-AWS-C")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/Program Files (x86)/GNU Arm Embedded Toolchain/10 2021.10/bin/arm-none-eabi-objdump.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/aes.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/aesni.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/arc4.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/aria.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/asn1.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/asn1write.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/base64.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/bignum.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/blowfish.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/bn_mul.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/camellia.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/ccm.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/certs.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/chacha20.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/chachapoly.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/check_config.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/cipher.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/cipher_internal.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/cmac.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/compat-1.3.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/config.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/config_psa.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/ctr_drbg.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/debug.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/des.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/dhm.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/ecdh.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/ecdsa.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/ecjpake.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/ecp.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/ecp_internal.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/entropy.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/entropy_poll.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/error.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/gcm.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/havege.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/hkdf.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/hmac_drbg.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/md.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/md2.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/md4.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/md5.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/md_internal.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/memory_buffer_alloc.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/net.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/net_sockets.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/nist_kw.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/oid.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/padlock.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/pem.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/pk.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/pk_internal.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/pkcs11.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/pkcs12.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/pkcs5.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/platform.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/platform_time.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/platform_util.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/poly1305.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/psa_util.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/ripemd160.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/rsa.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/rsa_internal.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/sha1.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/sha256.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/sha512.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/ssl.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/ssl_cache.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/ssl_ciphersuites.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/ssl_cookie.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/ssl_internal.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/ssl_ticket.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/threading.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/timing.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/version.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/x509.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/x509_crl.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/x509_crt.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/x509_csr.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/mbedtls/xtea.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/psa" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/psa/crypto.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/psa/crypto_accel_driver.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/psa/crypto_compat.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/psa/crypto_config.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/psa/crypto_driver_common.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/psa/crypto_entropy_driver.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/psa/crypto_extra.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/psa/crypto_platform.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/psa/crypto_se_driver.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/psa/crypto_sizes.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/psa/crypto_struct.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/psa/crypto_types.h"
    "D:/VS code wizfi360/WizFi360-EVB-Pico-AWS-C/libraries/mbedtls/include/psa/crypto_values.h"
    )
endif()

