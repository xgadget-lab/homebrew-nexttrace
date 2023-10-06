class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://github.com/nxtrace/NTrace-V1"
    version "v1.2.2.0"
    url "https://github.com/nxtrace/NTrace-V1/archive/refs/tags/v1.2.2.0.tar.gz"
    sha256 "55a5bd2eedc1f2d80b82520d489130fc3e072206fed4086faab735e9b536e8d9"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/nxtrace/NTrace-V1/config.Version=v1.2.2.0' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
