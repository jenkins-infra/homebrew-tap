class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1561.vec3eca_f3fa_d0".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1561.vec3eca_f3fa_d0/jenkins-plugin-modernizer-1561.vec3eca_f3fa_d0.jar"
    sha256 "e7a9c133e380b078d6aeb2b6dcf33eb62efbea67a672ff4e569ef535c53f2c64"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1561.vec3eca_f3fa_d0.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1561.vec3eca_f3fa_d0.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
