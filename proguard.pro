
-injars  ./target/java20-01.jar
-outjars ./target/java20-01-obf.jar

# Before Java 9, the runtime classes were packaged in a single jar file.
#-libraryjars <java.home>/lib/rt.jar
-libraryjars <java.home>/jmods/java.base.jmod(!**.jar;!module-info.class)

# Write out an obfuscation mapping file, for de-obfuscating any stack traces
# later on, or for incremental obfuscation of extensions.

-printmapping proguard.map

-dontwarn

# Preserve injected GSON utility classes and their members.

-keep public class ru.alles.Main {public static void main(java.lang.String[])}


