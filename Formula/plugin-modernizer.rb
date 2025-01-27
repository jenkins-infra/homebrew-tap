class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1369.v75b_a_fe65051f".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1369.v75b_a_fe65051f/jenkins-plugin-modernizer-1369.v75b_a_fe65051f.jar"
    sha256 "741e2a6251f5e9e211785001c9ccbde9e749e46df8a588c3d51baa1ea6455926"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1369.v75b_a_fe65051f.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1369.v75b_a_fe65051f.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
