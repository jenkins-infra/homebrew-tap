class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1837.vf82b_89449a_e7".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1837.vf82b_89449a_e7/jenkins-plugin-modernizer-1837.vf82b_89449a_e7.jar"
    sha256 "22218a5ea685c85dd1ace39aff3e0063d72cd51ca72782847bdfdf55f5800f24"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1837.vf82b_89449a_e7.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1837.vf82b_89449a_e7.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
