class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://mtr.moe"
    version "v1.1.7-1"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v1.1.7-1.tar.gz"
    sha256 "1c937a9f7c2f1d4a3e71e63db2929a5b24d438c63efd9715b00277f1b3add4cb"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/config.Version=v1.1.7-1' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
