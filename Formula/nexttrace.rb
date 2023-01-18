class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v1.0.2"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v1.0.2.tar.gz"
    sha256 "d0da64ca08ba2fe54e7d3b7c3c5fe9f6f706348fd7cffd2d6f81457033c4324d"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v1.0.2' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
