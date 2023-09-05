class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://mtr.moe"
    version "v1.2.0.3"
    url "https://github.com/nxtrace/NTrace-V1/archive/refs/tags/v1.2.0.3.tar.gz"
    sha256 "261d88ff2a4e03979bf53923485bb27ed6ebbd5318ba52a9659b6c831e24e78b"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/config.Version=v1.1.7-1' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
