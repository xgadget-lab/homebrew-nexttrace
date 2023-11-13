class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://github.com/nxtrace/NTrace-V1"
    version "v1.2.4.2"
    url "https://github.com/nxtrace/NTrace-V1/archive/refs/tags/v1.2.4.2.tar.gz"
    sha256 "8ff77077a9b5fdb443f6092dfdebf9b972fdea2ac5204e1f70a87eed4e46ea0c"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/nxtrace/NTrace-core/config.Version=v1.2.4.2' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
