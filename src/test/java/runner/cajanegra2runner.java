package runner;

import com.intuit.karate.junit5.Karate;

public class cajanegra2runner {
    @Karate.Test
    Karate testAll() {
        return Karate.run("classpath:features").relativeTo(getClass());
    }
}
