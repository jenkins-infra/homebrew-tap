class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1095.v3db_457f4d879".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1095.v3db_457f4d879/jenkins-plugin-modernizer-1095.v3db_457f4d879.jar"
    sha256 "2531716ce9ab5e7f8e9ceca9a62b7968637f69cc4836056fb5808fca5ee1044d"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1095.v3db_457f4d879.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1095.v3db_457f4d879.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
