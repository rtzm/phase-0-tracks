What are some of the key design philosophies of the Linux operating system?

This is the design philosophy of UNIX as summarized by Peter H. Salus in 1994:

- "Write programs that do one thing and do it well."
- "Write programs to work together."
- "Write programs to handle text streams, because that is a universal interface."

Here is Mike Gancarz summing it up in 9 statements:

- "Small is beautiful.
- "Make each program do one thing well.
- "Build a prototype as soon as possible.
- "Choose portability over efficiency.
- "Store data in flat text files.
- "Use software leverage to your advantage.
- "Use shell scripts to increase leverage and portability.
- "Avoid captive user interfaces.
- "Make every program a filter."

In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

A virtual private server is a server that includes multiple virtual environments, each with their own instance of an OS, alongside each other on the same physical hardware. This means that one server can be subdivided to use the same processor and lease out space to multiple clients. It's sort of like building high-rise apartments on one tract of land, instead of building a house on that tract. Some advantages are that it's cheaper for users to rent, and its more efficient use of space and computing power for the server administrator.

Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?

Permissions on Linux are designed to maintain users and admins within their proper scopes. Like with scope in a program, opening up scope too much can open up the underlying code to error, breaking, and potentially other dangerous problems. Running a program as root allows that program to do things that the OS wouldn't allow it to do otherwise, often for the sake of preventing it from affecting other file systems.