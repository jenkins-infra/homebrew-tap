class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2567.vb_13176915b_cb_".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2567.vb_13176915b_cb_/jenkins-plugin-modernizer-2567.vb_13176915b_cb_.jar"
    sha256 "67c37b554c595a77b3264a579a3fab42fae8664607fc4d79d3dd0b786f0a33f7"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2567.vb_13176915b_cb_.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2567.vb_13176915b_cb_.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
