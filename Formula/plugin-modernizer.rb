class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1915.vf98983a_d663a_".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1915.vf98983a_d663a_/jenkins-plugin-modernizer-1915.vf98983a_d663a_.jar"
    sha256 "53ead94d7d95215c5c95802eea181307b59cd4dfbe49adba73913b23ded024bb"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1915.vf98983a_d663a_.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1915.vf98983a_d663a_.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
