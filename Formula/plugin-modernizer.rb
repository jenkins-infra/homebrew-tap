class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "3245.vdf9c25656b_f3".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/3245.vdf9c25656b_f3/jenkins-plugin-modernizer-3245.vdf9c25656b_f3.jar"
    sha256 "cb376ee89badee36e511c7b019638cec223ea07e3683f7b522267ba2cba80c56"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-3245.vdf9c25656b_f3.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-3245.vdf9c25656b_f3.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
