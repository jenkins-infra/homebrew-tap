class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2049.vd7cb_7b_18c0e0".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2049.vd7cb_7b_18c0e0/jenkins-plugin-modernizer-2049.vd7cb_7b_18c0e0.jar"
    sha256 "fd878678d0fbe170abf6cbfc492f842228bd4a5c7be0c3118e4465fa1299a54c"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2049.vd7cb_7b_18c0e0.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2049.vd7cb_7b_18c0e0.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
