class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2274.v50fe6980fa_f1".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2274.v50fe6980fa_f1/jenkins-plugin-modernizer-2274.v50fe6980fa_f1.jar"
    sha256 "ed5e5901ce21fd75f913287ab08a2610a850197d6f29563c7ec773d69bca9149"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2274.v50fe6980fa_f1.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2274.v50fe6980fa_f1.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
