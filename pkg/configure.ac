AC_PREREQ(2.60)

# check rjungle
AC_INIT([rjungleR],[0.8.6],[daniel@randomjungle.com])

# check exe. extension 
AC_EXEEXT
AC_SUBST(EXEEXT)

set HAVE_RJUNGLE
set HAVE_RJUNGLESPARSE

AC_CHECK_PROG([HAVE_RJUNGLE], [rjungle$EXEEXT],[yes], [no])
AC_CHECK_PROG([HAVE_RJUNGLESPARSE], [rjunglesparse$EXEEXT],[yes], [no])

if test "$HAVE_RJUNGLE" = "no" ;then
AC_MSG_ERROR([could not find required program: rjungle. Download and install it from www.randomjungle.org])
fi
if test "$HAVE_RJUNGLESPARSE" = "no" ;then
AC_MSG_ERROR([could not find required program: rjunglesparse. Download and install it from www.randomjungle.org])
fi


AC_CONFIG_FILES([R/init.R])
AC_OUTPUT
