class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1125.v9cb_ffde530db_".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1125.v9cb_ffde530db_/jenkins-plugin-modernizer-1125.v9cb_ffde530db_.jar"
    sha256 "a9e812bc06dd35d8a0303e9ec011e8929e367fd8b8edab43800a1851a2d3a6b4"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1125.v9cb_ffde530db_.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1125.v9cb_ffde530db_.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
