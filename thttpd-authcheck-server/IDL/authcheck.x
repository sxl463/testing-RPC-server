
#include "idl_config.h"

const BUFFER_SIZE = 200;

struct shttpd_conn{
	int global_passwd;
	int vhost;
	int maxremoteuser;
	int method;
	int should_linger;
	int status;
	int mime_flag; /*used in send_mime*/
	int max_age; /*hs->max_age*/
	int got_range;
	int maxresponse; /*size_t*/
	int responselen; /*size_t*/
	long first_byte_index;
	long last_byte_index;
	long bytes_to_send; /*off_t usuall long int*/
	long range_if; /*time_t*/
	/*long st_mtime; */
	opaque dirname[BUFFER_SIZE];
	opaque authorization[BUFFER_SIZE];
	opaque hostdir[BUFFER_SIZE];
	opaque remoteuser[BUFFER_SIZE];
	opaque encodedurl[BUFFER_SIZE]; /* used in httpd_send_err*/
	opaque useragent[BUFFER_SIZE];
	opaque charset[BUFFER_SIZE];
	opaque protocol[BUFFER_SIZE];
	opaque p3p[BUFFER_SIZE];
	opaque response[BUFFER_SIZE];

};
typedef struct shttpd_conn shttpd_conn;

program AUTHPROG {
    version AUTHVERSION {
        int my_auth_check2(shttpd_conn) = 1;
    } = 1;
} = 0x23451124;


