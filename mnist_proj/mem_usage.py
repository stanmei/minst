import tensorflow as tf
import psutil
import time

'''
memory_usage = tf.Variable(0.0, dtype=tf.float32)
update_mem_usage = tf.assign(memory_usage, psutil.virtual_memory().used)
mem_usage_summary = tf.summary.scalar("memory_usage", update_mem_usage)

cpu_usage = tf.Variable(0.0, dtype=tf.float32)
update_cpu_usage = tf.assign(cpu_usage, psutil.cpu_percent(interval=None))
cpu_usage_summary = tf.summary.scalar("cpu_usage", update_cpu_usage)
'''

memory_usage = tf.placeholder("float", None)
memory_usage_summary = tf.summary.scalar("m_usage", memory_usage)

cpu_usage = tf.placeholder("float", None)
cpu_usage_summary = tf.summary.scalar("c_usage", cpu_usage)

init_op = tf.global_variables_initializer()

with tf.Session() as sess:
    sess.run(init_op)
    train_writer = tf.summary.FileWriter('/tmp/resource_usage', sess.graph)

    for i in range(1200):
        time.sleep(2)
        ret = sess.run(memory_usage_summary, feed_dict={memory_usage: psutil.virtual_memory().used})
        train_writer.add_summary(ret, i)

        ret = sess.run(cpu_usage_summary, feed_dict={cpu_usage: psutil.cpu_percent(interval=None)})
        train_writer.add_summary(ret, i)
'''        
        print("mem usage:%f" % (ret/2.**20))

        ret = sess.run(update_cpu_usage)
        train_writer.add_summary(ret, i)
        print("cpu usage:%d" % ret)
'''