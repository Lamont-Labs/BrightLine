from pathlib import Path

def main():
    Path("dist").mkdir(parents=True, exist_ok=True)
    Path("dist/brightline_demo.txt").write_text("BrightLine demo complete ✅\n")
    print("Demo artifact created at dist/brightline_demo.txt")

if __name__ == "__main__":
    main()
