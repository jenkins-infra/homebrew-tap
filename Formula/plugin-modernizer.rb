class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1429.v8817219845a_5".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1429.v8817219845a_5/jenkins-plugin-modernizer-1429.v8817219845a_5.jar"
    sha256 "0a1405aebc87727d86c65d1d51a29092eb43ff04db2443ce598b2ee0f7a51d03"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1429.v8817219845a_5.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1429.v8817219845a_5.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
