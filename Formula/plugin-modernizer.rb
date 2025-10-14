class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2316.vd1b_49781ed46".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2316.vd1b_49781ed46/jenkins-plugin-modernizer-2316.vd1b_49781ed46.jar"
    sha256 "889978f08614f870683452bdc8d0d2bb9e52668f2b54af6b41af1e3fa659d9c8"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2316.vd1b_49781ed46.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2316.vd1b_49781ed46.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
