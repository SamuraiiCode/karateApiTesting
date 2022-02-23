package karate;

import com.intuit.karate.junit5.Karate;

public class Services {
    @Karate.Test
    Karate Services(){
        return Karate.run("services.feature").relativeTo(getClass());
    }
}
