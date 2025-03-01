class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1558.vb_b_769584d99a_".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1558.vb_b_769584d99a_/jenkins-plugin-modernizer-1558.vb_b_769584d99a_.jar"
    sha256 "d6fc34e6c2735eaaf397b80b8a13e7a1aaf3cc1c401d0215a593b6e00e2297d1"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1558.vb_b_769584d99a_.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1558.vb_b_769584d99a_.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
