class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2618.vfa_fe52a_b_fda_5".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2618.vfa_fe52a_b_fda_5/jenkins-plugin-modernizer-2618.vfa_fe52a_b_fda_5.jar"
    sha256 "133a90f780e8bd023ff5eab1ceed2f13f5f3887482a770d6a2229619b7fe3949"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2618.vfa_fe52a_b_fda_5.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2618.vfa_fe52a_b_fda_5.jar", "plugin-modernizer" "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
