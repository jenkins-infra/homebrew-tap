class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1275.v9b_e023ceb_d88".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1275.v9b_e023ceb_d88/jenkins-plugin-modernizer-1275.v9b_e023ceb_d88.jar"
    sha256 "d20a9cd9bbd968758e9c01d4fdb01beb37dc43477e11f83839215f79295b0215"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1275.v9b_e023ceb_d88.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1275.v9b_e023ceb_d88.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
