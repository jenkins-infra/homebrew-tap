class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2027.v6200c63b_61fd".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2027.v6200c63b_61fd/jenkins-plugin-modernizer-2027.v6200c63b_61fd.jar"
    sha256 "a8e85623e3082a20dd7aae5292375624a0e01e5b8db46e429a992e1d235fd2d7"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2027.v6200c63b_61fd.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2027.v6200c63b_61fd.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
