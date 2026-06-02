class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "3066.v897fcd3b_7b_f1".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/3066.v897fcd3b_7b_f1/jenkins-plugin-modernizer-3066.v897fcd3b_7b_f1.jar"
    sha256 "0f1b37b9b1a67f9e3621d404c6cdc6845aa24616636c305a8351c59a077725dd"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-3066.v897fcd3b_7b_f1.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-3066.v897fcd3b_7b_f1.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
