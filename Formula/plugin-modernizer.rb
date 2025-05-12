class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1794.vd478993a_d996".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1794.vd478993a_d996/jenkins-plugin-modernizer-1794.vd478993a_d996.jar"
    sha256 "f9119f3b9d98be14e89a47a043db317d77d09c1182218543bc4dda920d65aa1d"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1794.vd478993a_d996.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1794.vd478993a_d996.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
