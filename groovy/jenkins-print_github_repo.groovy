// Standalone Groovy script to run in Jenkins to print GitHub jobs and their associated repository
// cerner_2^5_2018
def instance = Jenkins.instance

instance.getItems(Project).each {project ->
  def scm = project.getScm()
  if (scm instanceof hudson.plugins.git.GitSCM) {
    scm.getUserRemoteConfigs().each {userRemoteConfig ->
      println(project.displayName)
      println(userRemoteConfig.getUrl())
      println()
    }
  }
}
