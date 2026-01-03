class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2561.v8363651d28a_0".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2561.v8363651d28a_0/jenkins-plugin-modernizer-2561.v8363651d28a_0.jar"
    sha256 "e3384fa6213546aa7f84d98c338b1b8eeb6d2355ca8eedeee595aeeaf8b60b56"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2561.v8363651d28a_0.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2561.v8363651d28a_0.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
