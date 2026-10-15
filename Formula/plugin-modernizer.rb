class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "3232.v4b_a_48582fecc".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/3232.v4b_a_48582fecc/jenkins-plugin-modernizer-3232.v4b_a_48582fecc.jar"
    sha256 "86f5f7149336a4d512a0294c1579193a6be4db5e0b569f26c10fbb79dab6b6ee"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-3232.v4b_a_48582fecc.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-3232.v4b_a_48582fecc.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
