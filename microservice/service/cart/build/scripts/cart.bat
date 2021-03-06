@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  cart startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Add default JVM options here. You can also use JAVA_OPTS and CART_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS="-Dspring.profiles.active=production" "-Dserver.port=18100"

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windowz variants

if not "%OS%" == "Windows_NT" goto win9xME_args
if "%@eval[2+2]" == "4" goto 4NT_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*
goto execute

:4NT_args
@rem Get arguments from the 4NT Shell from JP Software
set CMD_LINE_ARGS=%$

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\cart-microservice-0.6.jar;%APP_HOME%\lib\slf4j-api-1.7.7.jar;%APP_HOME%\lib\logback-classic-1.1.2.jar;%APP_HOME%\lib\groovy-all-2.3.10.jar;%APP_HOME%\lib\commons-collections-3.2.1.jar;%APP_HOME%\lib\commons-io-2.1.jar;%APP_HOME%\lib\commons-lang3-3.2.1.jar;%APP_HOME%\lib\reflections-0.9.9-RC1.jar;%APP_HOME%\lib\dozer-5.5.1.jar;%APP_HOME%\lib\opencsv-2.3.jar;%APP_HOME%\lib\joda-time-2.3.jar;%APP_HOME%\lib\spring-core-4.1.6.RELEASE.jar;%APP_HOME%\lib\spring-webmvc-4.1.6.RELEASE.jar;%APP_HOME%\lib\jackson-databind-2.4.1.jar;%APP_HOME%\lib\jackson-core-2.4.1.jar;%APP_HOME%\lib\jackson-annotations-2.4.1.jar;%APP_HOME%\lib\spring-data-redis-1.5.0.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-redis-1.1.8.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-web-1.2.3.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-jetty-1.1.8.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-actuator-1.2.3.RELEASE.jar;%APP_HOME%\lib\spring-hateoas-0.16.0.RELEASE.jar;%APP_HOME%\lib\jedis-2.7.0.jar;%APP_HOME%\lib\spring-boot-starter-admin-client-1.1.2.jar;%APP_HOME%\lib\logback-core-1.1.2.jar;%APP_HOME%\lib\guava-17.0.jar;%APP_HOME%\lib\javassist-3.16.1-GA.jar;%APP_HOME%\lib\dom4j-1.6.1.jar;%APP_HOME%\lib\commons-beanutils-1.7.0.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.6.jar;%APP_HOME%\lib\commons-logging-1.1.1.jar;%APP_HOME%\lib\spring-beans-4.1.6.RELEASE.jar;%APP_HOME%\lib\spring-context-4.1.6.RELEASE.jar;%APP_HOME%\lib\spring-expression-4.1.6.RELEASE.jar;%APP_HOME%\lib\spring-web-4.1.6.RELEASE.jar;%APP_HOME%\lib\spring-context-support-4.1.6.RELEASE.jar;%APP_HOME%\lib\spring-tx-4.1.6.RELEASE.jar;%APP_HOME%\lib\spring-aop-4.1.6.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-1.2.3.RELEASE.jar;%APP_HOME%\lib\hibernate-validator-5.1.3.Final.jar;%APP_HOME%\lib\jetty-webapp-8.1.15.v20140411.jar;%APP_HOME%\lib\jetty-jsp-8.1.15.v20140411.jar;%APP_HOME%\lib\spring-boot-actuator-1.2.3.RELEASE.jar;%APP_HOME%\lib\objenesis-1.2.jar;%APP_HOME%\lib\commons-pool2-2.3.jar;%APP_HOME%\lib\jolokia-core-1.2.3.jar;%APP_HOME%\lib\xml-apis-1.4.01.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\spring-boot-1.2.3.RELEASE.jar;%APP_HOME%\lib\spring-boot-autoconfigure-1.2.3.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-logging-1.2.3.RELEASE.jar;%APP_HOME%\lib\snakeyaml-1.14.jar;%APP_HOME%\lib\validation-api-1.1.0.Final.jar;%APP_HOME%\lib\jboss-logging-3.1.3.GA.jar;%APP_HOME%\lib\classmate-1.0.0.jar;%APP_HOME%\lib\jetty-xml-8.1.15.v20140411.jar;%APP_HOME%\lib\jetty-servlet-8.1.15.v20140411.jar;%APP_HOME%\lib\javax.servlet.jsp-2.2.0.v201112011158.jar;%APP_HOME%\lib\org.apache.jasper.glassfish-2.2.2.v201112011158.jar;%APP_HOME%\lib\javax.servlet.jsp.jstl-1.2.0.v201105211821.jar;%APP_HOME%\lib\org.apache.taglibs.standard.glassfish-1.2.0.v201112081803.jar;%APP_HOME%\lib\javax.el-2.2.0.v201108011116.jar;%APP_HOME%\lib\com.sun.el-2.2.0.v201108011116.jar;%APP_HOME%\lib\org.eclipse.jdt.core-3.7.1.jar;%APP_HOME%\lib\spring-boot-starter-tomcat-1.2.3.RELEASE.jar;%APP_HOME%\lib\json-simple-1.1.1.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.11.jar;%APP_HOME%\lib\log4j-over-slf4j-1.7.11.jar;%APP_HOME%\lib\jetty-util-8.1.15.v20140411.jar;%APP_HOME%\lib\jetty-security-8.1.15.v20140411.jar;%APP_HOME%\lib\tomcat-embed-core-8.0.20.jar;%APP_HOME%\lib\tomcat-embed-el-8.0.20.jar;%APP_HOME%\lib\tomcat-embed-logging-juli-8.0.20.jar;%APP_HOME%\lib\tomcat-embed-websocket-8.0.20.jar;%APP_HOME%\lib\jetty-server-8.1.15.v20140411.jar;%APP_HOME%\lib\javax.servlet-3.0.0.v201112011016.jar;%APP_HOME%\lib\jetty-continuation-8.1.15.v20140411.jar;%APP_HOME%\lib\jetty-http-8.1.15.v20140411.jar;%APP_HOME%\lib\jetty-io-8.1.15.v20140411.jar

@rem Execute cart
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %CART_OPTS%  -classpath "%CLASSPATH%" io.github.zutherb.appstash.shop.service.cart.Boot %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable CART_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%CART_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
