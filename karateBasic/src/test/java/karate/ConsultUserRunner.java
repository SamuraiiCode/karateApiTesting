package karate;

import com.intuit.karate.junit5.Karate;

public class ConsultUserRunner {
    @Karate.Test
    Karate ConsultUserRunner(){
        return Karate.run("consult_user.feature").relativeTo(getClass());
    }
}
