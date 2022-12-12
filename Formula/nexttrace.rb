class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version "v0.2.4-1"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v0.2.4-1.tar.gz"
    sha256 "7ddb98b27fce6ea88837efda5b71250938d31dc66ce2604682fa6a2867f34458"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v0.2.4-1' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
