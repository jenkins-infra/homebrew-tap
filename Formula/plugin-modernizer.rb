class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1629.v774c1a_9b_da_34".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1629.v774c1a_9b_da_34/jenkins-plugin-modernizer-1629.v774c1a_9b_da_34.jar"
    sha256 "baff73405f518e8e8cab9479116e957f40bcd91561eef1d40e5c7696e5ab9870"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1629.v774c1a_9b_da_34.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1629.v774c1a_9b_da_34.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
