class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2327.va_b_b_64341482b_".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2327.va_b_b_64341482b_/jenkins-plugin-modernizer-2327.va_b_b_64341482b_.jar"
    sha256 "b09dfc29828d0c2c882fadf2ab301a71afa9bbfd673304a5923e5f7c569bc290"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2327.va_b_b_64341482b_.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2327.va_b_b_64341482b_.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
