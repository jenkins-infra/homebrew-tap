class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2378.v838b_24425d10".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2378.v838b_24425d10/jenkins-plugin-modernizer-2378.v838b_24425d10.jar"
    sha256 "0ca966169085340f0263b60b1ce6c889e4da2db44c802ec72679b1e2036b579a"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2378.v838b_24425d10.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2378.v838b_24425d10.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
