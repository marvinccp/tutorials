package org.baeldung.ex.beancreationexception;

import org.baeldung.ex.beancreationexception.spring.Cause3ContextWithJavaConfig;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.support.AnnotationConfigContextLoader;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { Cause3ContextWithJavaConfig.class }, loader = AnnotationConfigContextLoader.class)
public class Cause3BeanCreationExceptionIntegrationTest {

    @Test
    public final void givenContextIsInitialized_thenNoException() {
        //
    }

}
