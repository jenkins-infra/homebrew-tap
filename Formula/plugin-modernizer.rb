class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1104.v0a_f4c0389b_4b_".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1104.v0a_f4c0389b_4b_/jenkins-plugin-modernizer-1104.v0a_f4c0389b_4b_.jar"
    sha256 "a6dbeeda7e114ffa72eb7a636088e5fba30640924b7c1f37578819ee64f39540"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1104.v0a_f4c0389b_4b_.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1104.v0a_f4c0389b_4b_.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
