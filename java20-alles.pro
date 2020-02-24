
-injars  ./target/java20-01.jar
-outjars ./target/java20-01-obf.jar

-libraryjars <java.home>/jmods/java.base.jmod(!**.jar;!module-info.class)

-printmapping proguard.map
-dontwarn
-keep public class ru.alles.Main {public static void main(java.lang.String[]);}


