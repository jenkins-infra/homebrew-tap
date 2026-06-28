class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "3101.v87b_d07ea_59e6".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/3101.v87b_d07ea_59e6/jenkins-plugin-modernizer-3101.v87b_d07ea_59e6.jar"
    sha256 "ceb20377b5d33c4f81990adaf9aa52412d32636d18cb8ffeb822c9b1790790cd"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-3101.v87b_d07ea_59e6.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-3101.v87b_d07ea_59e6.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
