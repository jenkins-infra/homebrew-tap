class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1106.va_176b_fde3c9e".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1106.va_176b_fde3c9e/jenkins-plugin-modernizer-1106.va_176b_fde3c9e.jar"
    sha256 "928853ce5b7aeeb0bd25acc629d6803fac7440028bc672c2f5dbafd3606ae78f"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1106.va_176b_fde3c9e.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1106.va_176b_fde3c9e.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
