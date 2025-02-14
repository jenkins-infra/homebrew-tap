class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1496.ve68da_f7687de".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1496.ve68da_f7687de/jenkins-plugin-modernizer-1496.ve68da_f7687de.jar"
    sha256 "2123f87febb3d75a00e58838a07adc6906a9799a5a4b7588c31e57026184ff19"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1496.ve68da_f7687de.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1496.ve68da_f7687de.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
