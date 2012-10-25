/* $Id: Furl.xs 2 2012-10-25 13:25:37Z gomor $ */

/*
 */

#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include <stdio.h>
#include <furl/furl.h>
#include <furl/decode.h>

typedef furl_handler_t   FurlHandler;

MODULE = Lib::Furl  PACKAGE = Lib::Furl
PROTOTYPES: DISABLE

FurlHandler *
furl_init()
   CODE:
      RETVAL = furl_init();
   OUTPUT:
      RETVAL

char *
furl_get_version()
   CODE:
      RETVAL = furl_get_version();
   OUTPUT:
      RETVAL

int
furl_decode(fh, url, url_size)
      FurlHandler *fh
      char *url
      int url_size
   CODE:
      RETVAL = furl_decode(fh, (const char *)url, (const size_t)url_size);
   OUTPUT:
      RETVAL

void
furl_show(fh, sep_char, out)
      FurlHandler *fh
      char sep_char
      FILE *out
   CODE:
      furl_show(fh, (const char)sep_char, (FILE *)out);

void
furl_terminate(fh)
      FurlHandler *fh
   CODE:
      furl_terminate(fh);
