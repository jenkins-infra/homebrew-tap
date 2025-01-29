class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1406.v99a_f239d439b_".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1406.v99a_f239d439b_/jenkins-plugin-modernizer-1406.v99a_f239d439b_.jar"
    sha256 "5db6aa256d459c8d9c00670f9185a3f8fa97f6af86cd50283add2567805c01d0"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1406.v99a_f239d439b_.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1406.v99a_f239d439b_.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
