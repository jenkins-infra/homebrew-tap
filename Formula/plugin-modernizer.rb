class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1945.v0f27fc9088c4".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1945.v0f27fc9088c4/jenkins-plugin-modernizer-1945.v0f27fc9088c4.jar"
    sha256 "64d0428712860b4d36aeb06d0d655cb880a3bcbc055dae32f974dec14bed4db1"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1945.v0f27fc9088c4.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1945.v0f27fc9088c4.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
