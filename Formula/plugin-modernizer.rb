class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1178.vfb_4388e60536".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1178.vfb_4388e60536/jenkins-plugin-modernizer-1178.vfb_4388e60536.jar"
    sha256 "01a50da4f29e94e001ec333df8e896e3ab0b605f45016dff1322c27e92f602dd"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1178.vfb_4388e60536.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1178.vfb_4388e60536.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
