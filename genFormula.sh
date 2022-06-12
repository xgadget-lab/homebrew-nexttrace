# !/bin/bash
export version="$(curl -s https://api.github.com/repos/xgadget-lab/nexttrace/releases/latest | jq ".name")"
url="https://github.com/xgadget-lab/nexttrace/archive/refs/tags/${version:1:$((${#version} - 1 - 1))}.tar.gz"
sha256="$(curl -sL ${url} | sha256sum | cut -f1 -d' ')"
cat >Formula/nexttrace.rb <<EOF
class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://trace.ac"
    version ${version}
    url "${url}"
    sha256 "${sha256}"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=${version:1:$((${#version} - 1 - 1))}' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
EOF
url="https://github.com/xgadget-lab/nexttrace/archive/refs/heads/main.zip"
sha256="$(curl -sL ${url} | sha256sum | cut -f1 -d' ')"
version_withoutquo=${sha256:1:8}
cat >Formula/nexttrace-dev.rb <<EOF
class NexttraceDev < Formula
    desc "An open source visual route tracking CLI tool / Dev Channel"
    homepage "https://trace.ac"
    version "${version_withoutquo}"
    url "${url}"
    sha256 "${sha256}"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=${version_withoutquo}' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace-dev -V")
    end
  end
EOF
