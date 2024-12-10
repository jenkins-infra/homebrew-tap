class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider "499.vb_86f97f0b_197" 
    # as version "197" which is incorrect. So using version which only "%d" part for CD
    version "911.v211a_1d5a_7a_a_f".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/911.v211a_1d5a_7a_a_f/jenkins-plugin-modernizer-911.v211a_1d5a_7a_a_f.jar"
    sha256 "4aa574dd4c071037be73e36c2b2cd0bf8f2f6c58734cee3d6dd9c94dae8c770c"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-911.v211a_1d5a_7a_a_f.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-911.v211a_1d5a_7a_a_f.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
