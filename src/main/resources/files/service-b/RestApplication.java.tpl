package [# th:text="${java_package}"/];
[# th:if="${mp_JWT_auth}"]
import org.eclipse.microprofile.auth.LoginConfig;

import [# th:text="${jakarta_ee_package}"/].annotation.security.DeclareRoles;
[/]
import [# th:text="${jakarta_ee_package}"/].ws.rs.ApplicationPath;
import [# th:text="${jakarta_ee_package}"/].ws.rs.core.Application;

/**
 *
 */
@ApplicationPath("/data")
[# th:if="${mp_JWT_auth}"]
@LoginConfig(authMethod = "MP-JWT", realmName = "jwt-jaspi")
@DeclareRoles({"protected"})
[/]
public class [# th:text="${application}"/]RestApplication extends Application {
}
