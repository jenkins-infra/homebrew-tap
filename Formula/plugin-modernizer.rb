class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2475.v6999a_173463c".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2475.v6999a_173463c/jenkins-plugin-modernizer-2475.v6999a_173463c.jar"
    sha256 "32d0c1cb0eb7f32d69f3beb641336b335392a2c576a845720107e5a639d102f7"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2475.v6999a_173463c.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2475.v6999a_173463c.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
