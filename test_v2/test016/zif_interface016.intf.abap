INTERFACE zif_interface016 PUBLIC.
* Auto generated by https://github.com/abap-openapi/abap-openapi
* Title: Swagger Petstore - OpenAPI 3.0
* Version: 1.0.11

  CONSTANTS base_path TYPE string VALUE '/sap/zpetstore'.

* Dog
* Enum: dog-breed
  CONSTANTS: BEGIN OF c_enum_dog_breed,
               dingo TYPE string VALUE 'Dingo',
               husky TYPE string VALUE 'Husky',
               retriever TYPE string VALUE 'Retriever',
               shepherd TYPE string VALUE 'Shepherd',
             END OF c_enum_dog_breed.
  TYPES: BEGIN OF dog,
           bark TYPE abap_bool,
           breed TYPE string,
         END OF dog.
* body_create_dog
  TYPES: BEGIN OF body_create_dog,
           detail TYPE dog,
         END OF body_create_dog.
* response
  TYPES: BEGIN OF response,
           success TYPE abap_bool,
           errors TYPE STANDARD TABLE OF string WITH DEFAULT KEY,
         END OF response.

  TYPES: BEGIN OF r__create_dog,
           code          TYPE i,
           reason        TYPE string,
           _200_app_json TYPE response,
         END OF r__create_dog.
  METHODS _create_dog
    IMPORTING
      body TYPE body_create_dog
    RETURNING
      VALUE(return) TYPE r__create_dog
    RAISING
      cx_static_check.
ENDINTERFACE.
