INTERFACE zif_interface016 PUBLIC.
* Auto generated by https://github.com/abap-openapi/abap-openapi
* Title: Swagger Petstore - OpenAPI 3.0
* Version: 1.0.11

* Dog
  TYPES: BEGIN OF dog,
           bark TYPE abap_bool,
           breed TYPE string,
         END OF dog.
* body_createdog
  TYPES: BEGIN OF body_createdog,
           detail TYPE dog,
         END OF body_createdog.
* response
  TYPES: BEGIN OF response,
           success TYPE abap_bool,
           errors TYPE STANDARD TABLE OF string WITH DEFAULT KEY,
         END OF response.

  TYPES: BEGIN OF r__createdog,
           _200_app_json TYPE response,
         END OF r__createdog.
  METHODS _createdog
    IMPORTING
      body TYPE body_createdog
    RETURNING
      VALUE(return) TYPE r__createdog
    RAISING
      cx_static_check.
ENDINTERFACE.