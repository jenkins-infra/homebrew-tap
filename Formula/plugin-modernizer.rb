class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "3198.vd85d8f9ed80f".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/3198.vd85d8f9ed80f/jenkins-plugin-modernizer-3198.vd85d8f9ed80f.jar"
    sha256 "d29c017226f39fd2906ef68674eef0de3fd5ac362b344756e00f22ced8bfc49a"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-3198.vd85d8f9ed80f.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-3198.vd85d8f9ed80f.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
