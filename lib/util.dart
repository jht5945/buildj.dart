
import 'dart:io';

const NEW_LINE = '\n';
const HEADER = '\u001B[95m';
const OKBLUE = '\u001B[94m';
const OKGREEN = '\u001B[92m';
const WARNING = '\u001B[93m';
const FAIL = '\u001B[91m';
const BOLD = '\u001B[1m';
const UNDERLINE = '\u001B[4m';
const ENDC = '\u001B[0m';

void stdout_newline() {
  stdout_println('');
}

void stdout_print(s) {
  stdout.write(s);
}

void stdout_println(s) {
  stdout.write(s + NEW_LINE);
}

void log_info(m) {
  stdout_println('$BOLD[INFO]$ENDC $m');
}

void log_warn(m) {
  stdout_println('$WARNING$BOLD[WARN]$ENDC $m');
}

void log_error(m) {
  stdout_println('$FAIL$BOLD[ERROR]$ENDC $m');
}
